Package: `effect`<br />
Module: `Context`<br />

## Context.get

Get a service from the context that corresponds to the given key.

**Signature**

```ts
declare const get: { <Services, I extends Services, S>(service: Key<I, S>): (self: Context<Services>) => S; <Services, I extends Services, S>(self: Context<Services>, service: Key<I, S>): S; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L818)

Since v4.0.0