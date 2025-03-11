## string

Constructs a document containing a string of text.

**Note**: newline characters (`\n`) contained in the provided string will be
disregarded (i.e. not rendered) in the output document.

**Signature**

```ts
declare const string: (str: string) => Doc<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L460)

Since v1.0.0