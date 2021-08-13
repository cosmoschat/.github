# Self-Hosted Servers Specification

This file contains the specifications for Self-Hosted servers, it contains the required connections they must make and the required endpoint they must expose as well as how security ad other critical features must work.

## Sections

1. [Overview](#Overview)
2. [Security](#Security)
    1. Authorization
    2. Authentication
3. [RESTful](#RESTful)
4. [Verisoning](#Versioning)
5. [Webhooks](#Webhooks)
    1. Inbound
    2. Outbound
6. [Models](#Models)
7. [Other notes](#Other-Notes)

# Overview

# Security

# RESTful

Every self hosted server must implement the following endpoints, each endpoint has its route as well as a small description to help with implementations. If you need to see a working example you can refer to the [pre-built server](https://github.com/cosmoschat/self-hosted).

## GET `/meta`
This endpoint dosen't accept or require any data and only return relevent metadata. This endpoint can send any extra data that you think is sutible back however at a minimum it mush have the data here included.
```json
{
    "v": 1, // version as int
    "startedAt": "datetime", // datetime as string
}
```

## POST `/galaxy`

> :warning: This endpoint must be authenticated and should check that the user creating has control over the server!

This endpoint is responsible for creating a new galaxy on the server, it will be recieved from our metadata servers with the following data (with is part of the [Galaxy Model](#galaxy))
```json
{
    "id": "",
    "name": "My Cool Galaxy",
    "ownerId": "",
}
```
This data should then be checked, for more info on how to validate a request see the [Security](#Security) section.

## GET `/galaxy/:id`
This endpoint should get all infomation about a galaxy and return the [Galaxy Model](#galaxy)

## GET `/galaxy/:id/channels`

> :warning: This endpoint should only return data that can be accessed by the autheticate user, if unauthenticated should return an empty array as the user has access to nothing.

This endpoint should return an array of [channels](#galaxy_channel) that are accessable to the currently identified user.

## POST `/galaxy/:id/channels`

> :warning: This endpoint must be authenticated and should only be allowed if the user has permissions to the galaxy or category that the channel will be in.

This endpoint is responsible for creating a new channel for the galaxy, it should take in a partial [Galaxy Channel](#galaxy_channel) which follows the follwing schema
```json
{
    "id": "string?", // Should be included if the request is from the metadata server,
    "name": "string",
    "type": "int",
    "topic": "string?",
    "parentChannelId": "string?",
}
```

# Versioning

# Webhooks

# Models

## Galaxy
```json
{
    "id": "string",
    "name": "string",
    "description": "string?",
    "server": "url",
    "iconHash": "string?",
    "ownerId": "string",
    "publicFlags": "int",
    "privateFlags": "int" // Note: not included in any public API requests
}
```

## Galaxy Channel
```json
{
    "id": "string",
    "type": "int",
    "name": "string",
    "topic": "string?",
    "defaultPermissions": "int",
    "permissionOverrides": "[PermissionOverrides]",
    "lastMessageId": "string?",
    "parentChannelId": "string?"
}
```

## Permission Overrides
```json
{
    "type": "int",
    "id": "string",
    "permissions": "int"
}
```

# Other Notes