# [ccxitsurgent](https://ccextractor.org/public/gsoc/2023/itsurgent/)

This project aims to create an app that makes it easier for people to get in touch when it is absolutely necessary to. 

When reaching out to someone (user `A` to `B`), the flow is like this:
1. `A` sends a notification to `B`
2. If `B` is **not** in do-not-disturb mode, the alert will be triggered.
3. If `B` is in do-not-disturb mode then `A` will get a notification and a challenge.
4. The challenge is up to `B` to decide. It can be a password, a simple math operation, etc.
5. `A` answers the challenge and sends it to `B`.
6. If correct, then `B` will ring.

This will make sure `B` can focus on their work, while people can still contact them for extremely important tasks.
