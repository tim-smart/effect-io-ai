Package: `effect`<br />
Module: `Context`<br />

## Context.getOrUndefined

Returns the service currently stored for a key, or `undefined` when the key
is absent.

**Notes**

This is a raw lookup and does not resolve default values for
`Context.Reference` keys.

**Signature**

```ts
declare const getOrUndefined: { <S, I>(key: Key<I, S>): <Services>(self: Context<Services>) => S | undefined; <Services, S, I>(self: Context<Services>, key: Key<I, S>): S | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L737)

Since v4.0.0