## Credits
thanks tkaefer

## Usage

### Plain `docker run`
```
docker run -it -v ~/client.ovpn:/etc/openvpn/client.conf --cap-add=NET_ADMIN --rm babim/openvpn-client
```
`-e SSHPASS=yourpassword` or default root:root

`-e AUTHORIZED_KEYS=.......` for AUTHORIZED key ssh
