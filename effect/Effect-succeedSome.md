## succeedSome

Returns an effect which succeeds with the value wrapped in a `Some`.

**See**

- `succeedNone` for a similar function that returns `None` when the value is absent.

**Signature**

```ts
declare const succeedSome: <A>(value: A) => Effect<Option.Option<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3121)

Since v2.0.0