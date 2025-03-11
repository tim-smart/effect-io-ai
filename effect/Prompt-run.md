## run

Executes the specified `Prompt`.

**Signature**

```ts
declare const run: <Output>(self: Prompt<Output>) => Effect<Output, QuitException, Prompt.Environment>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Prompt.ts#L654)

Since v1.0.0