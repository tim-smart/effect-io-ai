Package: `effect`<br />
Module: `Context`<br />

## Context.pick

Returns a new `Context` that contains only the specified services.

**Signature**

```ts
declare const pick: <S extends ReadonlyArray<Key<any, any>>>(...services: S) => <Services>(self: Context<Services>) => Context<Services & Service.Identifier<S[number]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L1047)

Since v4.0.0