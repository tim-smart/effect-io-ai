Package: `effect`<br />
Module: `Schema`<br />

## Schema.Codec.ToAsserts

Converts a schema type into an assertion function signature. The resulting
function narrows its argument to `I & S["Type"]`. Only schemas with
`DecodingServices: never` (i.e. no required services) can be used here.

Produced by `asserts`.

**Signature**

```ts
type ToAsserts<S> = <I>(input: I) => asserts input is I & S["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L706)

Since v4.0.0