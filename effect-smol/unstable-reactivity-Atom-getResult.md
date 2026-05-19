Package: `effect`<br />
Module: `Atom`<br />

## Atom.getResult

Reads an `AsyncResult` atom as an effect through the `AtomRegistry` service.

The effect waits while the result is `Initial`, and also while it is waiting
when `suspendOnWaiting` is enabled. Successes succeed with the value and
failures fail with the result cause.

**Signature**

```ts
declare const getResult: <A, E>(self: Atom<AsyncResult.AsyncResult<A, E>>, options?: { readonly suspendOnWaiting?: boolean | undefined; }) => Effect.Effect<A, E, AtomRegistry>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L2304)

Since v4.0.0