## match

It is the `pipe`-able version of the native `match` method.

**Signature**

```ts
declare const match: (regexp: RegExp | string) => (self: string) => Option.Option<RegExpMatchArray>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L432)

Since v2.0.0