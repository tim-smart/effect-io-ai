# isFailure

Returns `true` if the specified `Exit` is a `Failure`, `false` otherwise.

To import and use `isFailure` from the "Exit" module:

```ts
import * as Exit from "effect/Exit"
// Can be accessed like this
Exit.isFailure
```

**Signature**

```ts
export declare const isFailure: <E, A>(self: Exit<E, A>) => self is Failure<E, A>
```
