# setPassword

Updates the password used for authentication.

To import and use `setPassword` from the "Url" module:

```ts
import * as Url from "@effect/platform/Url"
// Can be accessed like this
Url.setPassword
```

**Signature**

```ts
export declare const setPassword: { (password: string): (url: URL) => URL; (url: URL, password: string): URL }
```
