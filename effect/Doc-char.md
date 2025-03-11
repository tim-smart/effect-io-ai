## char

A document containing a single character.

**Invariants**
- Cannot be the newline (`"\n"`) character

**Signature**

```ts
declare const char: (char: string) => Doc<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L437)

Since v1.0.0