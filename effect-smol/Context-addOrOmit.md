Package: `effect`<br />
Module: `Context`<br />

## Context.addOrOmit

Adds or removes a service depending on an `Option`.

**When to use**

Use when you need to add or omit a `Context` service based on an `Option`.

**Details**

When `service` is `Option.some`, the value is stored for the key. When it is
`Option.none`, the key is removed from the returned `Context`.

**Example** (Adding optional services)

```ts
import { Context, Option } from "effect"

const Port = Context.Service<{ PORT: number }>("Port")

const withPort = Context.empty().pipe(
  Context.addOrOmit(Port, Option.some({ PORT: 8080 }))
)

const withoutPort = withPort.pipe(
  Context.addOrOmit(Port, Option.none())
)
```

**See**

- `add` for always storing a service value

**Signature**

```ts
declare const addOrOmit: { <I, S>(key: Key<I, S>, service: Option.Option<Types.NoInfer<S>>): <Services>(self: Context<Services>) => Context<Services | I>; <Services, I, S>(self: Context<Services>, key: Key<I, S>, service: Option.Option<Types.NoInfer<S>>): Context<Services | I>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L737)

Since v4.0.0