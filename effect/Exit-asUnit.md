# asUnit

Maps the `Success` value of the specified exit to a void.

To import and use `asUnit` from the "Exit" module:

```ts
import * as Exit from "effect/Exit"
// Can be accessed like this
Exit.asUnit
```

**Signature**

```ts
export declare const asUnit: <A, E>(self: Exit<A, E>) => Exit<void, E>
```
