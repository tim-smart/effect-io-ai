Package: `effect`<br />
Module: `Config`<br />

## Config.Duration

A `Schema.Codec` for `Duration` values encoded as strings.

When to use:
- Pass to `schema` for custom paths, or use the `duration`
  convenience constructor.

Accepts any string that `Duration.fromInput` can parse (e.g.
`"10 seconds"`, `"500 millis"`).

**See**

- `duration` – convenience constructor

**Signature**

```ts
declare const Duration: Schema.decodeTo<Schema.Duration, Schema.String, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L743)

Since v4.0.0