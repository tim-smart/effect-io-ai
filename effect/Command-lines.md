## lines

Runs the command returning the output as an array of lines with the specified
encoding.

**Signature**

```ts
declare const lines: (command: Command, encoding?: string) => Effect<Array<string>, PlatformError, CommandExecutor>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L172)

Since v1.0.0