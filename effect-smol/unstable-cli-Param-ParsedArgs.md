Package: `effect`<br />
Module: `Param`<br />

## Param.ParsedArgs

Input context passed to `Param.parse` implementations.
- `flags`: already-collected flag values by canonical flag name
- `arguments`: remaining positional arguments to be consumed

**Signature**

```ts
export interface ParsedArgs {
  readonly flags: Flags
  readonly arguments: ReadonlyArray<string>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L137)

Since v4.0.0