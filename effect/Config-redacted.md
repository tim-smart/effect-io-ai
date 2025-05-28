Package: `effect`<br />
Module: `Config`<br />

## Config.redacted

Constructs a config for a redacted value.

**Signature**

```ts
declare const redacted: { (name?: string): Config<Redacted.Redacted>; <A>(config: Config<A>): Config<Redacted.Redacted<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L367)

Since v2.0.0