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

# Current progress
- [x] Created basic UI mockup
- [x] Added models for user and notifications, fetching placeholder data from an API
- [ ] Show priority on notification and more details on click.


<img src="https://user-images.githubusercontent.com/61899816/226570860-f46b83ec-09e2-46c1-9479-1f1cf2a389bd.png" width="20%" alt="progress screenshot"><img src="https://user-images.githubusercontent.com/61899816/226570880-43d84ea7-3439-4a31-99e9-6578eebbb700.png" width="20%" alt="progress screenshot"><img src="https://user-images.githubusercontent.com/61899816/226570895-ffa9ca91-9293-4480-bb04-8b90c86cc12a.png" width="20%" alt="progress screenshot"><img src="https://user-images.githubusercontent.com/61899816/226570902-75e43c19-7c9c-4924-b93e-7c08b5d47455.png" width="20%" alt="progress screenshot"><img src="https://user-images.githubusercontent.com/61899816/226570889-f47f1c1a-a218-4738-a9e5-5a3ff93b3e65.png" width="20%" alt="progress screenshot">
