# checkInterruptible

Checks the interrupt status, and produces the effect returned by the
specified callback.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const checkInterruptible: <R, E, A>(f: (isInterruptible: boolean) => Effect<R, E, A>) => Effect<R, E, A>
```
