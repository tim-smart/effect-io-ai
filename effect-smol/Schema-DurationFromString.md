Package: `effect`<br />
Module: `Schema`<br />

## Schema.DurationFromString

Type-level representation of a transformation schema that decodes strings
accepted by `Duration.fromInput` into `Duration` values.

**Signature**

```ts
export interface DurationFromString extends decodeTo<Duration, String> {
  readonly "Rebuild": DurationFromString
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9381)

Since v4.0.0