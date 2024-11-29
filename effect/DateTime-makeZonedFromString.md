# makeZonedFromString

Create a `DateTime.Zoned` from a string.

It uses the format: `YYYY-MM-DDTHH:mm:ss.sss+HH:MM[Time/Zone]`.

To import and use `makeZonedFromString` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.makeZonedFromString
undefined

**Signature**

```ts
export declare const makeZonedFromString: (input: string) => Option.Option<Zoned>
```
