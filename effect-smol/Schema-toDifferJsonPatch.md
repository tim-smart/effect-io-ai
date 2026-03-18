Package: `effect`<br />
Module: `Schema`<br />

## Schema.toDifferJsonPatch

Derives a JSON Patch differ from a codec. Serializes values to JSON (via
`toCodecJson`), computes RFC 6902 JSON Patch operations between old
and new values, and can apply patches back to the typed value.

**Signature**

```ts
declare const toDifferJsonPatch: <T, E>(schema: Codec<T, E>) => Differ<T, JsonPatch.JsonPatch>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10981)

Since v4.0.0