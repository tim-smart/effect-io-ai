Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.FormDataInput

Record input accepted by `formDataRecord`.

**Details**

Each field may be a single coercible value or an array of coercible values.

**Signature**

```ts
type FormDataInput = Record<string, FormDataCoercible | ReadonlyArray<FormDataCoercible>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpBody.ts#L390)

Since v4.0.0