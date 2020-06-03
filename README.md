# Core Relay images

These images provide a good starting point for building relay integrations. Use a snippet like the following in your Dockerfile in order to use them:

```
# for shell-based integrations
FROM relaysh/core:latest
#
# *OR*
#
# for python SDK-based integrations
FROM relaysh/core:latest-python
```
