Package: `effect`<br />
Module: `Context`<br />

## Context.getUnsafe

Gets the service for a key, throwing if an absent non-reference key cannot be
resolved.

**Details**

If the key is a `Context.Reference` and no override is stored in the
context, its cached default value is returned. For absent non-reference keys,
this function throws a runtime error.

For a safer version see `getOption`.

**Signature**

```ts
declare const getUnsafe: { <S, I>(service: Key<I, S>): <Services>(self: Context<Services>) => S; <Services, S, I>(self: Context<Services>, services: Key<I, S>): S; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L778)

Since v4.0.0