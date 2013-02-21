///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

#include "vu2.h"
#include "vu_priv.h"

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

//-----------------------------------------------------------------------------
// VuTypeFilter
//-----------------------------------------------------------------------------

VuTypeFilter::VuTypeFilter(ushort type) : VuFilter()
{
	type_ = type;
}

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

VuTypeFilter::VuTypeFilter(VuTypeFilter* other) : VuFilter(other)
{
	type_ = other->type_;
}

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

VuTypeFilter::~VuTypeFilter()
{
	// empty
}

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

VU_BOOL VuTypeFilter::Test(VuEntity* ent)
{
	return static_cast<VU_BOOL>(ent->Type() == type_ ? TRUE : FALSE);
}

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

VU_BOOL VuTypeFilter::RemoveTest(VuEntity* ent)
{
	return static_cast<VU_BOOL>(ent->Type() == type_ ? TRUE : FALSE);
}

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

int VuTypeFilter::Compare (VuEntity* ent1, VuEntity* ent2)
{
	return (int)ent1->Id() - (int)ent2->Id();
}

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

VuFilter *VuTypeFilter::Copy ()
{
	return new VuTypeFilter(this);
}

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
