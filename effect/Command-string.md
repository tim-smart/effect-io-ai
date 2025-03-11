## string

Runs the command returning the entire output as a string with the
specified encoding.

If an encoding is not specified, the encoding will default to `utf-8`.

**Signature**

```ts
declare const string: { (encoding?: string): (command: Command) => Effect<string, PlatformError, CommandExecutor>; (command: Command, encoding?: string): Effect<string, PlatformError, CommandExecutor>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L248)

Since v1.0.0