def _timpl(settings, attr):
    return {
        "//:use_color": attr.use_color,
        "//:use_letter": attr.use_letter,
    }

_foo_transition = transition(
    implementation = _timpl,
    inputs = [],
    outputs = ["//:use_color", "//:use_letter"],
)

def _foo_impl(ctx):
    return []

foo = rule(
    implementation = _foo_impl,
    attrs = {
        "ask": attr.label(cfg = _foo_transition, mandatory = False),
        "use_color": attr.string(mandatory = False),
        "use_letter": attr.string(mandatory = False),
    },
)
