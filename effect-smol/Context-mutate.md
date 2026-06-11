Package: `effect`<br />
Module: `Context`<br />

## Context.mutate

Performs a series of mutations on a `Context`. Prevents unnecessary copying
of the underlying map when multiple mutations are needed.

**When to use**

Use to apply several `Context` transformations in one callback while copying
the underlying service map only once.

**See**

- `add` for adding or replacing a service
- `addOrOmit` for adding or removing a service from an `Option`
- `merge` for combining two contexts
- `pick` for keeping selected services
- `omit` for removing selected services

**Signature**

```ts
declare const mutate: { <Services, B>(f: (context: Context<Services>) => Context<B>): <Services>(self: Context<Services>) => Context<B>; <Services, B>(self: Context<Services>, f: (context: Context<Services>) => Context<B>): Context<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L1268)

Since v4.0.0