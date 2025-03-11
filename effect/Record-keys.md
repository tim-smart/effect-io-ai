## keys

Retrieve the keys of a given record as an array.

**Signature**

```ts
declare const keys: <K extends string | symbol, A>(self: ReadonlyRecord<K, A>) => Array<K & string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L912)

Since v2.0.0