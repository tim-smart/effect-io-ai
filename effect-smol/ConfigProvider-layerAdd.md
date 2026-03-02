Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.layerAdd

Creates a Layer that composes a new `ConfigProvider` with the currently
active one, rather than replacing it.

When to use:
- Adding defaults that should only apply when the primary provider has no
  value for a path.
- Overriding specific keys while keeping the rest from the existing provider
  (use `asPrimary: true`).

By default, the new provider acts as a **fallback** (consulted only when
the current provider returns `undefined`). Set `asPrimary: true` to make
the new provider the **primary** source, with the existing one as fallback.

**Example** (Adding default values)

```ts
import { ConfigProvider } from "effect"

const defaults = ConfigProvider.fromUnknown({
  HOST: "localhost",
  PORT: "3000"
})

// The current env provider is tried first; `defaults` is the fallback
const DefaultsLayer = ConfigProvider.layerAdd(defaults)
```

**See**

- `layer` – replace the provider entirely
- `orElse` – compose providers without layers

**Signature**

```ts
declare const layerAdd: <E = never, R = never>(self: ConfigProvider | Effect.Effect<ConfigProvider, E, R>, options?: { readonly asPrimary?: boolean | undefined; } | undefined) => Layer.Layer<never, E, Exclude<R, Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L660)

Since v4.0.0