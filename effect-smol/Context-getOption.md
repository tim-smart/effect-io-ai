Package: `effect`<br />
Module: `Context`<br />

## Context.getOption

Gets the service for a key wrapped in an `Option`.

**Details**

Returns `Option.some` when the service is stored in the context. If the key
is a `Context.Reference` and no override is stored, returns `Option.some` of
the cached default value. Missing non-reference keys return `Option.none`.

**Signature**

```ts
declare const getOption: { <S, I>(service: Key<I, S>): <Services>(self: Context<Services>) => Option.Option<S>; <Services, S, I>(self: Context<Services>, service: Key<I, S>): Option.Option<S>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L915)

Since v4.0.0