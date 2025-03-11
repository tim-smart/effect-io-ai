## flatten

Flatten this command to a non-empty array of standard commands.

For a `StandardCommand`, this simply returns a `1` element array
For a `PipedCommand`, all commands in the pipe will be extracted out into
a array from left to right

**Signature**

```ts
declare const flatten: (self: Command) => NonEmptyReadonlyArray<StandardCommand>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L163)

Since v1.0.0