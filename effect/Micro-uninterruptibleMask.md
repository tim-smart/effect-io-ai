# uninterruptibleMask

Wrap the given `Micro` effect in an uninterruptible region, preventing the
effect from being aborted.

You can use the `restore` function to restore a `Micro` effect to the
interruptibility state before the `uninterruptibleMask` was applied.

To import and use `uninterruptibleMask` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.uninterruptibleMask
undefined

**Example**

```ts
import * as Micro from "effect/Micro"

Micro.uninterruptibleMask((restore) =>
  Micro.sleep(1000).pipe(
    // uninterruptible
    Micro.andThen(restore(Micro.sleep(1000))) // interruptible
  )
)
```

**Signature**

```ts
export declare const uninterruptibleMask: <A, E, R>(
  f: (restore: <A, E, R>(effect: Micro<A, E, R>) => Micro<A, E, R>) => Micro<A, E, R>
) => Micro<A, E, R>
```
