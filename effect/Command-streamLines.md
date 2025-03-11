## streamLines

Runs the command returning the output as an stream of lines with the
specified encoding.

**Signature**

```ts
declare const streamLines: (command: Command, encoding?: string) => Stream<string, PlatformError, CommandExecutor>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L236)

Since v1.0.0