# succeedSome

Returns an effect which succeeds with the value wrapped in a `Some`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const succeedSome: <A>(value: A) => Effect<never, never, Option.Option<A>>
```
