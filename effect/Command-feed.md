## feed

Feed a string to standard input (default encoding of UTF-8).

**Signature**

```ts
declare const feed: { (input: string): (self: Command) => Command; (self: Command, input: string): Command; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L148)

Since v1.0.0