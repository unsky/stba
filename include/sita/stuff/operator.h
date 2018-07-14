//
// Created by unsky on 03/07/18.
//

#ifndef SITA_STUFF_OPERATORS_H
#define SITA_STUFF_OPERATORS_H
#include <vector>
#include <string>
#include "macros.h"
#include "workspace.h"
#include "sita/protos/sita.pb.h"
namespace sita{

template <typename Dtype>
class GlobalWorkSpace;

template <typename Dtype>
class Operator{
public:
    Operator(const OperatorDef& opdef, GlobalWorkSpace<Dtype> *gws):_opdef(opdef),_gws(gws){}
    ~Operator(){}
    virtual void  init();
    virtual void forward(){};
    virtual void backward(){};
protected:
    GlobalWorkSpace<Dtype> *_gws;
    OperatorDef _opdef;
};

}//namespace


#endif //SITA_STUFF_OPERATORS_H
