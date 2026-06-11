Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromTransformBracket

Creates a `Channel` from a transformation function that operates on upstream
pulls, but also provides a forked scope that closes when the resulting
Channel completes.

**When to use**

Use when building channels that require scoped resource lifecycle management,
providing both the channel scope and a forked scope that automatically closes
when the channel completes.

**See**

- `fromTransform` for a simpler transformation without a forked scope

**Signature**

```ts
declare const fromTransformBracket: <OutElem, OutErr, OutDone, InElem, InErr, InDone, EX, EnvX, Env>(f: (upstream: Pull.Pull<InElem, InErr, InDone>, scope: Scope.Scope, forkedScope: Scope.Scope) => Effect.Effect<Pull.Pull<OutElem, OutErr, OutDone, EnvX>, EX, Env>) => Channel<OutElem, Pull.ExcludeDone<OutErr> | EX, OutDone, InElem, InErr, InDone, Env | EnvX>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L388)

Since v4.0.0