# uninterruptibleMask

This function behaves like {@link uninterruptible}, but it also provides a
`restore` function. This function can be used to restore the interruptibility
of any specific region of code.

To import and use `uninterruptibleMask` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.uninterruptibleMask
```

**Signature**

```ts
export declare const uninterruptibleMask: <A, E, R>(
  f: (restore: <AX, EX, RX>(effect: Effect<AX, EX, RX>) => Effect<AX, EX, RX>) => Effect<A, E, R>
) => Effect<A, E, R>
```
