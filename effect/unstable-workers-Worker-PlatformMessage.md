Package: `effect`<br />
Module: `Worker`<br />

## Worker.PlatformMessage

Internal worker platform protocol message: `[0]` signals readiness and
`[1, payload]` carries data.

**Signature**

```ts
type PlatformMessage = readonly [ready: 0] | readonly [data: 1, unknown]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Worker.ts#L92)

Since v4.0.0