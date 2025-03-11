## promise

Wrap a `Promise` into a `Micro` effect.

Any errors will result in a `Die` variant of the `MicroCause` type, where the
error is not tracked at the type level.

**Signature**

```ts
declare const promise: <A>(evaluate: (signal: AbortSignal) => PromiseLike<A>) => Micro<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1063)

Since v3.4.0