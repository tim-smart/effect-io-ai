Package: `effect`<br />
Module: `Socket`<br />

## Socket.defaultCloseCodeIsError

Default close-code classifier that treats every socket close code as an
error.

**Signature**

```ts
declare const defaultCloseCodeIsError: (_code: number) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Socket.ts#L538)

Since v4.0.0