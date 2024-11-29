# fromExit

Creates a `Take` from an `Exit`.

To import and use `fromExit` from the "Take" module:

ts
import \* as Take from "effect/Take"
// Can be accessed like this
Take.fromExit
undefined

**Signature**

```ts
export declare const fromExit: <A, E>(exit: Exit.Exit<A, E>) => Take<A, E>
```
