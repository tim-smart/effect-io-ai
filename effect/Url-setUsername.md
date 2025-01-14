# setUsername

Updates the username used for authentication.

To import and use `setUsername` from the "Url" module:

```ts
import * as Url from "@effect/platform/Url"
// Can be accessed like this
Url.setUsername
```

**Signature**

```ts
export declare const setUsername: { (username: string): (url: URL) => URL; (url: URL, username: string): URL }
```
