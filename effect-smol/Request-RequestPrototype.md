Package: `effect`<br />
Module: `Request`<br />

## Request.RequestPrototype

Prototype used by Effect's request constructors.

**Notes**

This low-level value provides the structural request marker for values
created by `Request.of`, `Request.tagged`, `Request.Class`, and
`Request.TaggedClass`. Most users should use those constructors instead of
interacting with the prototype directly.

**Signature**

```ts
declare const RequestPrototype: Request<any, any, any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L212)

Since v4.0.0