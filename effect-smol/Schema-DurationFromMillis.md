Package: `effect`<br />
Module: `Schema`<br />

## Schema.DurationFromMillis

Type-level representation of a transformation schema that decodes
non-negative millisecond numbers into `Duration` values.

**Signature**

```ts
export interface DurationFromMillis extends decodeTo<Duration, Number> {
  readonly "Rebuild": DurationFromMillis
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9727)

Since v3.10.0