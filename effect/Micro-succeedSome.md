Package: `effect`<br />
Module: `Micro`<br />

## Micro.succeedSome

Creates a `Micro` effect that will succeed with the value wrapped in `Some`.

**Signature**

```ts
declare const succeedSome: <A>(a: A) => Micro<Option.Option<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L939)

Since v3.4.0