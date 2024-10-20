# formatIsoZoned

Format a `DateTime.Zoned` as a string.

It uses the format: `YYYY-MM-DDTHH:mm:ss.sss+HH:MM[Time/Zone]`.

To import and use `formatIsoZoned` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.formatIsoZoned
```

**Signature**

```ts
export declare const formatIsoZoned: (self: Zoned) => string
```
