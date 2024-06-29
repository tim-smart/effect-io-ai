# asVoid

Maps the `Success` value of the specified exit to a void.

To import and use `asVoid` from the "Exit" module:

```ts
import * as Exit from "effect/Exit"
// Can be accessed like this
Exit.asVoid
```

**Signature**

```ts
export declare const asVoid: <A, E>(self: Exit<A, E>) => Exit<void, E>
```
