Package: `effect`<br />
Module: `Schema`<br />

## Schema.withDecodingDefault

**Options**

- `encodingStrategy`: The strategy to use when encoding.
  - `passthrough`: (default) Pass the default value through to the output.
  - `omit`: Omit the value from the output.

**Signature**

```ts
declare const withDecodingDefault: <S extends Top>(defaultValue: () => S["Encoded"], options?: DecodingDefaultOptions) => (self: S) => withDecodingDefault<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3108)

Since v4.0.0