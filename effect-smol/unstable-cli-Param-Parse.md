Package: `effect`<br />
Module: `Param`<br />

## Param.Parse

Function type used by parameters to parse currently available flags and
positional arguments.

**Details**

It returns the remaining positional arguments together with the parsed value,
or fails with a `CliError` while requiring the CLI parsing environment.

**Signature**

```ts
type Parse<A> = (args: ParsedArgs) => Effect.Effect<
  readonly [leftover: ReadonlyArray<string>, value: A],
  CliError.CliError,
  Environment
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L135)

Since v4.0.0