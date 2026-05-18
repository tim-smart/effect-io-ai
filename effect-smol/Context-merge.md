Package: `effect`<br />
Module: `Context`<br />

## Context.merge

Merges two `Context`s into one.

**Details**

When both contexts contain the same service key, the service from `that`
overrides the service from `self`.

**Signature**

```ts
declare const merge: { <R1>(that: Context<R1>): <Services>(self: Context<Services>) => Context<R1 | Services>; <Services, R1>(self: Context<Services>, that: Context<R1>): Context<Services | R1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L957)

Since v4.0.0