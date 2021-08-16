# Reference

{base_url}/v{version}/{endpoint}

# Authentication
ItsDangerous Tokens - https://docs.rs/itsdangerous/0.4.0/itsdangerous/

# User

### Auth
- [ ] POST /auth/login
- [ ] POST /auth/register
- [ ] POST /auth/logout

### Profile
- [ ] GET /me - Get profile 
- [ ] PATCH /me - Edit profile

### Friends
#### **TODO** More friend endpoints ideas
- [ ] GET /me/friends
- [ ] GET /me/friends/requests

### Other Users
- [ ] GET /users/:id

# Galaxy

- [ ] POST /galaxies - Create new galaxy
- [ ] GET /galaxies/:id - Get galaxy by Id
- [ ] PATCH /galaxies/:id - Update galaxy
- [ ] DELETE /galaxies/:id - Delete galaxy by Id

### Channels
- [ ] POST /galaxies/:id/channels - Create new channel
- [ ] GET /galaxies/:id/channels - Get all channels
- [ ] GET /galaxies/:id/channels/:id - Get channel by Id
