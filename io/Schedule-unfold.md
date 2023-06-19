# unfold

Unfolds a schedule that repeats one time from the specified state and
iterator.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const unfold: <A>(initial: A, f: (a: A) => A) => Schedule<never, unknown, A>
```
