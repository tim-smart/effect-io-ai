Package: `effect`<br />
Module: `Context`<br />

## Context.addOrOmit

Adds or removes a service depending on an `Option`.

**Details**

When `service` is `Option.some`, the value is stored for the key. When it is
`Option.none`, the key is removed from the returned `Context`.

**Signature**

```ts
declare const addOrOmit: { <I, S>(key: Key<I, S>, service: Option.Option<Types.NoInfer<S>>): <Services>(self: Context<Services>) => Context<Services | I>; <Services, I, S>(self: Context<Services>, key: Key<I, S>, service: Option.Option<Types.NoInfer<S>>): Context<Services | I>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L655)

Since v4.0.0