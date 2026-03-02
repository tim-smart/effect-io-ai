Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromTransformBracket

Creates a `Channel` from a transformation function that operates on upstream
pulls, but also provides a forked scope that closes when the resulting
Channel completes.

**Signature**

```ts
declare const fromTransformBracket: <OutElem, OutErr, OutDone, InElem, InErr, InDone, EX, EnvX, Env>(f: (upstream: Pull.Pull<InElem, InErr, InDone>, scope: Scope.Scope, forkedScope: Scope.Scope) => Effect.Effect<Pull.Pull<OutElem, OutErr, OutDone, EnvX>, EX, Env>) => Channel<OutElem, Pull.ExcludeDone<OutErr> | EX, OutDone, InElem, InErr, InDone, Env | EnvX>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L371)

Since v4.0.0