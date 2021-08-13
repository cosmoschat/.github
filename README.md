# Cosmos

Connecting you to every galaxy

# Idea

Cosmos is a chat service which allows you peice of mind that your data is safe while abstracting away the pains of managing identites and useability.

# Specifications

- [Self-Hosted Servers](./spec/selfhosted.md)

# The Projects

Cosmos is currently split into 3 main parts which are described below along woth the current technology being used for each.

## UI

The UI which allows users to access their servers & other peoples servers in a nice GUI, we will also allow custom GUIs as long as they follow a layed out spec and our code of conduct for GUIs

## Self-Hosted Server

This is the part that you run on your server or PC, it stores all messages, files, etc locally allowing access only to useres who are in a galaxy on that server. Each server can support more than 1 galaxy with a cap undecided at this time.

## Our Servers

Our servers are split into 3 parts, Identity, Metadata & Central Realtime Server. All of which are described in more detail below.

### Identity

The identity server is responsible for managing user authentication and generating tokens/signatures for self-hosted server to use for validation of identities.

### Metadata

This part of our server stores & manages basic metadata like Galaxy invites at a global scale as well as Galaxy ID, Names, etc.

### Central Realtime Server

Centra Realtime Server is responsible for allowing realtime communication between self-hosted servers and UI clients without the need for multiple socket connections.