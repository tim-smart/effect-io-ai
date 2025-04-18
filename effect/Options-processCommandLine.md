Package: `@effect/cli`<br />
Module: `Options`<br />

## Options.processCommandLine

Processes the provided command-line arguments, searching for the specified
`Options`.

Returns an `Option<ValidationError>`, any leftover arguments, and the
constructed value of type `A`. The possible error inside
`Option<ValidationError>` would only be triggered if there is an error when
parsing the command-line arguments. This is because `ValidationError`s are
also used internally to control the end of the command-line arguments (i.e.
the command-line symbol `--`) corresponding to options.

**Signature**

```ts
declare const processCommandLine: { (args: ReadonlyArray<string>, config: CliConfig): <A>(self: Options<A>) => Effect<[Option<ValidationError>, Array<string>, A], ValidationError, FileSystem | Path | Terminal>; <A>(self: Options<A>, args: ReadonlyArray<string>, config: CliConfig): Effect<[Option<ValidationError>, Array<string>, A], ValidationError, FileSystem | Path | Terminal>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Options.ts#L483)

Since v1.0.0